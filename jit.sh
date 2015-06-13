mkdir builddata
cd ./builddata
echo $TRAVIS_BUILD_NUMBER > ./build.txt
echo $TRAVIS_COMMIT > ./commit.txt
head ./build.txt
head ./commit.txt
cd ..
