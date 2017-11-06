<?php 
get_header();
 ?>
<input type="file" name="file" id="file">
<input type="submit" id="submit" name="Upload" onclick="upload();return false;">

<script type="text/javascript">
function upload(){
  var formData = new FormData();
  formData.append("action", "upload-attachment");
	
  var fileInputElement = document.getElementById("file");
  formData.append("async-upload", fileInputElement.files[0]);
  formData.append("name", fileInputElement.files[0].name);
  	
  //also available on page from _wpPluploadSettings.defaults.multipart_params._wpnonce
  <?php $my_nonce = wp_create_nonce('media-form'); ?>
  formData.append("_wpnonce", "<?php echo $my_nonce; ?>");
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange=function(){
    if (xhr.readyState==4 && xhr.status==200){
      console.log(xhr.responseText);
    }
  }
  xhr.open("POST","/wp-admin/async-upload.php",true);
  xhr.send(formData);
}
</script>

<?php 
get_footer();
 ?>