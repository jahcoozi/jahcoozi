#!/bin/bash/

# --------- links
#user_info=$(who | grep tty7)
user_info=$(who)
downloads_area=/Library/WebServer/Documents/projects/jahcoozi/development/living_style_guide/assets/downloads/bash_method.sh.zip
methods_doc=~/.bash_method.sh
#logfile


package_M(){
zip -r $downloads_area $methods_doc
}

get_dir_file_names(){
	for file in $1*; do
		echo ${file##*/} >> $2
	done
}

#
get_dir_file_names_n_create_selection(){
dir_file="<div class='form-group'>
<label for='sel1'>Select list:</label>
<select class='form-control' id='sel1'>"

	for file in $1*; do
		 dir_file+="<option>${file##*/}</option>"
	done

	dir_file+="</select></div>"
	echo $dir_file >> $2
}

tester(){
echo "test $1"
}

inject(){
echo $1 >> $2
}

inject_div(){
sed -i '<div id="$1">/a $2' $3
}


# [M][function][source][target]
link_css(){
echo "<link rel='stylesheet' href='$1'>" >> $2
}


# [M][function][source][target]
link_javascript(){
echo "<script type='text/javascript' src='$1'> </script>" >> $2
}

# [M][function][source][target]
link_import(){
echo "<link rel='import' href='$1'>" >> $2
}


# --------- partials


circle_image_selection(){
echo "<div class='col-md-4 center'>
<img class='img-circle vert_space_1' src='data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==' alt='Generic placeholder image' width='140' height='140'>
<h2 class='center vert_space_1'>Heading</h2>
<p><a class='btn btn-default' href='#' role='button'>View details »</a></p>
</div>"  >> $1
}

bio_left(){
echo "<div class='col-md-6'>
<div class='col-md-5 float-left'>
<img class='featurette-image img-responsive center-block img-circle' width='140' height='140' data-src='holder.js/500x500/auto' alt='500x500' src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCIgdmlld0JveD0iMCAwIDUwMCA1MDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzUwMHg1MDAvYXV0bwpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE1YWFmZTQwNGU2IHRleHQgeyBmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MjVwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTVhYWZlNDA0ZTYiPjxyZWN0IHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIiBmaWxsPSIjRUVFRUVFIi8+PGc+PHRleHQgeD0iMTg1LjEyNSIgeT0iMjYxLjEiPjUwMHg1MDA8L3RleHQ+PC9nPjwvZz48L3N2Zz4=' data-holder-rendered='true'>
</div>
<h2 class='featurette-heading'>First featurette heading. <span class='text-muted'>It'll blow your mind.</span></h2>
<p class='lead'>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
</div>" >> $1
}

bio_right(){
echo "<div class='col-md-6'>
<div class='col-md-5 float-left'>
<img class='featurette-image img-responsive center-block img-circle' width='140' height='140' data-src='holder.js/500x500/auto' alt='500x500' src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCIgdmlld0JveD0iMCAwIDUwMCA1MDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzUwMHg1MDAvYXV0bwpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE1YWFmZTQwNGU2IHRleHQgeyBmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MjVwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTVhYWZlNDA0ZTYiPjxyZWN0IHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIiBmaWxsPSIjRUVFRUVFIi8+PGc+PHRleHQgeD0iMTg1LjEyNSIgeT0iMjYxLjEiPjUwMHg1MDA8L3RleHQ+PC9nPjwvZz48L3N2Zz4=' data-holder-rendered='true'>
</div>
<h2 class='featurette-heading'>First featurette heading. <span class='text-muted'>It'll blow your mind.</span></h2>
<p class='lead'>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
</div>" >> $1
}

M_help(){
cat ~/.bash_method.sh
}

export -f package_M get_dir_file_names get_dir_file_names_n_create_selection tester inject inject_div link_css link_javascript link_import link_import circle_image_selection bio_left bio_right bash_method_list


