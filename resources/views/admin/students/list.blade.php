@extends('layouts.app')

@section('content')
<h1 class="">{{ $display['heading'] }}</h1>
<ol class="breadcrumb mb-2">
    <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="fa fa-home"></i> Home</a></li>
    <li class="breadcrumb-item">Students</li>
    <li class="breadcrumb-item active">{{ $display['heading'] }}</li>
</ol>
<div class="row mb-2">
    <div class="col-sm-12">
        <a href="{{ route('students.add') }}" class="btn btn-outline-success">Register</a>
    </div>
</div>
<div class="table-responsive">
    <table class="table table-sm table-striped" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Roll No</th>
                <th>Class</th>
                <th>Gender</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data as $key => $list)
                <tr>
                    <td>{{ $data->firstItem()+$key }}</td>
                    <td>
                        <a href="{{ route('students.view', $list->student_id) }}">
                            {{ $list->student_name }}
                        </a>
                    </td>
                    <td>{{ $list->roll_no }}</td>
                    <td>
                        @if($list->class_name)
                            {{ $list->class_name." (".$list->section.")" }}
                        @endif
                    </td>
                    <td>
                        @if($list->gender == "0")
                            {{ "Male" }}
                        @elseif($list->gender == "1")
                            {{ "Female" }}
                        @elseif($list->gender == "9")
                            {{ "Others" }}
                        @endif
                    </td>
                    <td>
                        @if($list->valid_flg == "0")
                            {{ "Active" }}
                        @elseif($list->valid_flg == '1')
                            {{ "Not Active" }}
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('students.edit', $list->student_id) }}"><i class="fas fas fa-edit mr-1"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
<div class="row col-sm-12">
    <div class="col-form-label">
        @if(!empty($data->total()))
            {{ $data->firstItem() }} ~ {{ $data->lastItem() }} / {{ $data->total() }}
        @endif
    </div>
    <div class="ml-2">
        {{ $data->links() }}
    </div>
</div>
@endsection