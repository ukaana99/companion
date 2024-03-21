part of 'signup_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

class SignUpState extends Equatable {
  const SignUpState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmedPassword = const ConfirmedPassword.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.obscurePassword = true,
    this.obscurePassword2 = true,
    this.isValid = false,
  });

  final Email email;
  final Password password;
  final ConfirmedPassword confirmedPassword;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool obscurePassword;
  final bool obscurePassword2;
  final bool isValid;

  @override
  List<Object> get props => [
        email,
        password,
        confirmedPassword,
        status,
        obscurePassword,
        obscurePassword2,
        isValid,
      ];

  SignUpState copyWith({
    Email? email,
    Password? password,
    ConfirmedPassword? confirmedPassword,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? obscurePassword,
    bool? obscurePassword2,
    bool? isValid,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      obscurePassword2: obscurePassword2 ?? this.obscurePassword2,
      isValid: isValid ?? this.isValid,
    );
  }
}
