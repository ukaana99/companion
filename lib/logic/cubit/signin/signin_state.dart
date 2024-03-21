part of 'signin_cubit.dart';

class SignInState extends Equatable {
  const SignInState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.obscurePassword = true,
    this.isValid = false,
  });

  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool obscurePassword;
  final bool isValid;

  @override
  List<Object> get props => [email, password, status, obscurePassword, isValid];

  SignInState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? obscurePassword,
    bool? isValid,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      isValid: isValid ?? this.isValid,
    );
  }
}
