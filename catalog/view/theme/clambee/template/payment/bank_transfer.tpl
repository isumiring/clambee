<div class="row">
    <div class="col-md-12">
        <h4><?php echo $text_instruction; ?></h4>
        <p><?php echo $text_description; ?></p>
        <p><?php echo $bank; ?></p>
        <p><?php echo $text_payment; ?></p>
    </div>
    <div class="col-md-12">
        <div class="text-right">
            <button type="button" id="button-confirm" class="btn btn-inverse" ><?php echo $button_confirm; ?></button>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
    $.ajax({
        type: 'get',
        url: 'index.php?route=payment/bank_transfer/confirm',
        success: function() {
            location = '<?php echo $continue; ?>';
        }
    });
});
//--></script> 
