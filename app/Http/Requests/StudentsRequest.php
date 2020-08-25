<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentsRequest extends FormRequest
{
    /**
    * Determine if the user is authorized to make this request.
    *
    * @return bool
    */
    public function authorize()
    {
        // $comment = Students::find($this->route('doEdit'));

        // return $comment && $this->user()->can('update', $comment);

        return true;
    }

    /**
    * Get the validation rules that apply to the request.
    *
    * @return array
    */
    public function rules()
    {
        return [
            'student_name' => 'required',
            'roll_no' => 'required|numeric',
            'class_id' => 'required|numeric'
        ];
    }
}