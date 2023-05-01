echo "welcome" | tee -a {1..10}.txt
echo "enter the value var1"
read var1
echo "enter the value var2"
read var2
if [ $var1 == $var2 ]
then
        git clone https://github.com/onlyforcloudaws/guvitasks.git
        sudo tar -cvzf file.tar.gz {1..10}.txt
        gabriel
        mv file.tar.gz guvi-task-round1/
        cd guvi-task-round1/
        git checkout -b master
        git add .
        git commit -m "added tar file"
        git push origin master
        echo "var are same"
else
        git clone https://github.com/onlyforcloudaws/guvitasks.git
        mv {1..10}.txt guvi-task-round1/
        cd guvi-task-round1/
        git checkout -b develop
        git add .
        git commit -m "moved all files"
        git push origin develop
        echo "var are not same"
fi
