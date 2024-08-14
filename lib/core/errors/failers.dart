abstract class Failers {
  final String error;
  Failers(this.error);
}

class serverError extends Failers {
  serverError(super.error);  
}
