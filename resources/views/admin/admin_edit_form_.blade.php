<!DOCTYPE html>
<html lang="en">
<head>
  <title>فاطمه کیامرادی</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body dir="rtl">
<div class="container">
  {!! Form::model($record,['method'=>'PATCH','route'=>['admin.admin_edit_form_.update',$record->id]]) !!}
    <div class="form-group">
      <label for="input1">نام</label>
      {{Form::text('name',null,['class'=>'form-control','id'=>'input1'])}}
    </div>
    <div class="form-group">
      <label for="input2">انتقاد یا پیشنهاد شما</label>
         <textarea class="form-control" name="conten" id="input2" class="form-control" ></textarea>
    </div>
        <div class="form-group">
      <label for="input3">ایمیل</label>
      <input type="email" class="form-control" id="input3" name="email">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  {!! Form::close() !!}
</div>
</body>
</html>