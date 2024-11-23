abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseDynamicFailure<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseStream<Type, Params> {
  Stream<Type> call(Params params);
}

const noParams = NoParams();

class NoParams {
  const NoParams();
}
