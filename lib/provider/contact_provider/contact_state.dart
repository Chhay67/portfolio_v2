class ContactState {
  const ContactState({
    this.isLoading = false,
    this.errorMessage = '',
    this.infoMessage = '',
  });

  final bool isLoading;
  final String errorMessage;

  final String infoMessage;


  ContactState copyWith({
    bool? isLoading,
    String? errorMessage,
    String? infoMessage,
  }) {
    return ContactState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      infoMessage: infoMessage ?? this.infoMessage,
    );
  }
}
