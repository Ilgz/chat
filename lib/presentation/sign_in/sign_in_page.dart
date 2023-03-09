import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:chat/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:chat/application/chat/chat_combiner_bloc/chat_combiner_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/injection.dart';
import 'package:chat/presentation/core/routes/router.dart';
import 'package:chat/presentation/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        useAppBar: false,
        body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: Center(
            child: Card(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 8),
              elevation: 10,
              //color: AppColorConstants.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocConsumer<SignInFormBloc, SignInFormState>(
                    builder: (context, state) {
                  return Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(8),
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.titleLarge,
                          )),
                          const SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .emailAddress
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        invalidEmail: (value) =>
                                            'Invalid email',
                                        orElse: () => null),
                                    (r) => null),
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.emailChanged(value)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                                isDense: true,
                                border: UnderlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5)),
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            obscureText: true,
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        shortPassword: (value) =>
                                            'Short password',
                                        orElse: () => null),
                                    (r) => null),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: state.isSubmitting
                                    ? null
                                    : () {
                                        context.read<SignInFormBloc>().add(
                                            SignInFormEvent
                                                .signInWithEmailAndPasswordPressed());
                                      },
                                child: state.isSubmitting
                                    ? const SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.white),
                                        ))
                                    : const Text("Sign in")),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(children: [
                                const TextSpan(
                                    text: 'Don\'t have account ? ',
                                    style: TextStyle(color: Colors.grey)),
                                WidgetSpan(
                                    child: InkWell(
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () {
                                    goToSignUpPage(context);
                                  },
                                ))
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // ↑ Navigate to new page here
                        ],
                      ));
                }, listener: (context, state) {
                  state.authFailureSuccessOption.fold(
                      () => () {},
                      (either) => either.fold(
                              (failure) => ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Text(failure.map(
                                          remoteError: (remoteError) =>
                                              remoteError.errorName,
                                          serverError: (_) => "Server error",
                                          emailAlreadyInUse: (_) =>
                                              "Email already in use",
                                          invalidEmailAndPassword: (_) =>
                                              "Invalid email and password combination")))),
                              (r) {
                            context.read<UserWatcherBloc>().add(
                                  const UserWatcherEvent.startWatchAll(),
                                ); context.read<ChatWatcherCubit>()
                              .startWatchAll();
                            context
                                .read<ProfileWatcherCubit>()
                                .getSignedInUser();
                            context
                                .read<ProjectWatcherBloc>()
                                .add(const ProjectWatcherEvent.startWatchAll());
                            context
                                .read<ChatCombinerCubit>()
                                .watchSearchChats();
                            context
                                .read<AuthBloc>()
                                .add(AuthEvent.authCheckRequested());
                            goToChatsOverviewPage(context);
                          }));
                }),
              ),
            ),
          ),
        ));
  }
}
