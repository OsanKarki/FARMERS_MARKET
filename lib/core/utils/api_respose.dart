class ApiResponse<T> {
  T? data;
  T? error;
  ApiResponse({this.data,this.error});
  bool  get hasData=> data!=null;
  bool  get hasError=> error!=null;
  bool get initial=>data==null && error ==null;}