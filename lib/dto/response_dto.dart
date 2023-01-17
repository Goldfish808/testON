class ResponseDto {
  final dynamic status;
  final int? totalResults;
  dynamic articles;

  ResponseDto({
    this.status,
    this.totalResults,
    this.articles,
  });

  ResponseDto.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        totalResults = json["totalResults"],
        articles = json["articles"];
}
