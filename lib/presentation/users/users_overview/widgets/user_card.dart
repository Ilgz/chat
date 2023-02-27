import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:chat/application/projects/tasks/task_actor/task_actor_cubit.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/projects/task.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/injection.dart';
import 'package:chat/presentation/core/widgets/failure_snackbar.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/users/users_overview/widgets/user_icon.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, this.projectAndOptionTask, required this.user})
      : super(key: key);
  final Tuple2<Project,Task?>? projectAndOptionTask;
  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TaskActorCubit>(),
      child: BlocListener<TaskActorCubit, TaskActorState>(
        listener: (context, state) {
          state.maybeMap(
              changeTaskAssigneeSuccess: (state){
                context.pop();
              },
              changeTaskAssigneeFailure: (state){
                ScaffoldMessenger.of(context).showSnackBar(FailureSnackBar(failure: state.projectFailure));
              },
              deleteProjectMemberFailure: (state){
                ScaffoldMessenger.of(context).showSnackBar(FailureSnackBar(failure: state.failureException));
              },
              addProjectMemberFailure: (state) {
                ScaffoldMessenger.of(context).showSnackBar(FailureSnackBar(failure: state.failureException));
              },
              orElse: () {});
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          child: Builder(
            builder: (context) {
              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () async {
                  if (projectAndOptionTask == null) {
                    //goToUserProjectsListPage(context, user);
                  }
                  else if(projectAndOptionTask!.value1.canBeModifiedAndIsAdmin.getOrElse(() => false)){
                    assert (projectAndOptionTask!=null);
                        context.read<TaskActorCubit>().changeTaskAssignee(projectAndOptionTask!.value2!,projectAndOptionTask!.value1.reference, user);
                    }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 5, bottom: 5),
                          child: UserIcon(user.userName.getOrCrash())),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            user.userName.getOrCrash(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          if (projectAndOptionTask != null) ...[
                            Text(
                              projectAndOptionTask!.value1.owner.reference == user.reference
                                  ? "Админ"
                                  : "Участник",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ]
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      if (projectAndOptionTask != null &&
                          projectAndOptionTask!.value1.canBeModifiedAndIsAdmin.getOrElse(() => false
                              )&&user.reference != projectAndOptionTask!.value1.owner.reference) ...[
                            if(projectAndOptionTask?.value2==null)...[
                              BlocBuilder<TaskActorCubit, TaskActorState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    loadingProgressState: (_) =>
                                        IconButton(
                                          onPressed: () {},
                                          icon: const CircularProgressIndicator(
                                            valueColor: AlwaysStoppedAnimation(
                                                Colors.green),
                                          ),
                                        ),
                                    orElse: () {
                                      if (projectAndOptionTask!.value1.members
                                          .any((member) =>
                                      member.reference == user.reference&&
                                          user.reference != projectAndOptionTask!.value1.owner.reference)) {
                                        return IconButton(
                                            onPressed: () {
                                              context.read<TaskActorCubit>().deleteProjectMember(
                                                      projectAndOptionTask!.value1, user);
                                            },
                                            icon: DecoratedBox(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.red,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: const Icon(
                                                Icons.remove,
                                                color: Colors.red,
                                                size: 22,
                                              ),
                                            ));
                                      } else {
                                        return IconButton(
                                            onPressed: () {
                                              context.read<TaskActorCubit>().addProjectMember(
                                                      projectAndOptionTask!.value1, user);
                                            },
                                            icon: DecoratedBox(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Theme.of(context).primaryColor,
                                                size: 22,
                                              ),
                                            ));
                                      }
                                    },
                                  );
                                },
                              )
                            ]else...[
                              projectAndOptionTask!.value2!.assignee.fold(() => const SizedBox(), (owner) => owner!=user.reference?const SizedBox():Icon(Icons.star,color: Theme.of(context).primaryColor,))
                            ]

                      ]
                    ],
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
