function xampp --wraps=/opt/lampp/manager-linux-x64.run --wraps='sudo /opt/lampp/manager-linux-x64.run' --description 'alias xampp=sudo /opt/lampp/manager-linux-x64.run'
  sudo /opt/lampp/manager-linux-x64.run $argv; 
end
