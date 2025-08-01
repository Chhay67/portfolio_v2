class ContactState {
  const ContactState({
    this.isLoading = false,
    this.errorMessage = '',
  });

  final bool isLoading;
  final String errorMessage;

  ContactState copyWith({
    bool? isLoading,
    String? errorMessage,
  }) {
    return ContactState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
