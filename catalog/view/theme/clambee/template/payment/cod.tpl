<div class="row">
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
        url: 'index.php?route=payment/cod/confirm',
        success: function() {
            location = '<?php echo $continue; ?>';
        }
    });
});
//--></script> 
