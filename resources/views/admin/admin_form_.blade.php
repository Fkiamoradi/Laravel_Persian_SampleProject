<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body dir="rtl">
<div class="container">
  <table class="table table-condensed table-hover table-bordered table-striped" style="text-align: center;">
                    <thead>
                    <tr>
                        <th>نام</th>
                        <th>انتقاد</th>
                        <th>ایمیل</th>
                        <th>ویرایش</th>
                        <th>حذف</th>
                    </tr>
                    </thead>
                    @foreach($form_db as $form_db2)
                        <tr>
                            <td>
                                {{ $form_db2->name }}
                            </td>
                            <td>{{ $form_db2->conten }}</td>
                            <td>{{ $form_db2->email }}</td>
                            <td>
                                <a href="<?= Url('admin/form_/'.$form_db2->id.'/edit') ?>">
                                    <span ><i class="glyphicon glyphicon-edit"></i></span>
                                </a>
                            </td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#{{$form_db2->id}}_delete">
                                    <span ><i class="glyphicon glyphicon-trash"></i></span>
                                </a>
                            </td>
                    @endforeach
                </table>
                @foreach($form_db as $form_db)
                <!-- modal delete -->
        <div class="row">
            <div class="col-sm-12">
                <!-- modal delete -->
                <div id="{{$form_db->id}}_delete" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                            </div>
                            <div class="modal-body">
                                  <form action="<?= Url('admin/form_/'.$form_db->id); ?>" method="POST">
                                            <input type="hidden" name="_token" value="{{csrf_token()}}" >
                                            <input type="hidden" name="_method" value="DELETE" >
                                            <button type="submit" class="btn btn-danger">حذف کردن</button>
                                  </form>
                            </div>
                            <div class="modal-footer">
                                <div class="row">
                                    <div class="col-lg-8"></div>
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-2">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">انصراف</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end-modal delete -->
                @endforeach
</div>
</body>
</html>
