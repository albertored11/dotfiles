function shorten --description 'Shorten URL using 0x0.st'
	if [ $argv[1] ]
                curl -F'shorten='$argv[1]'' http://0x0.st
            else
                echo 'usage: shorten URL_TO_SHORTEN'
            end
end
