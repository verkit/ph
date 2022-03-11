class RequestParams {
  final String? query;
  final int? limit;
  final int? page;
  const RequestParams({
    this.query,
    this.limit = 50,
    this.page = 1,
  });
}

class FoodRequestParams implements RequestParams {
  const FoodRequestParams({
    this.query,
    this.limit = 50,
    this.page = 1,
    this.group,
  });

  final String? group;

  @override
  final String? query;

  @override
  final int? limit;

  @override
  final int? page;
}
