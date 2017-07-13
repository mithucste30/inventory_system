$(document).ready(function(){
});

function toggleRequiredFieldVisibility(element){
    var nextInput = $(element).parent().parent().next('.input_values_div');

    if($(element).val() === 'select'){
        nextInput.removeClass('hidden');
        nextInput.find("input").prop("disabled", false);
    } else {
        nextInput.addClass('hidden');
        nextInput.find("input").prop("disabled", true);
    }
}
