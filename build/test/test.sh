echo 'WARNING: Testing not configured!'
echo 'WARNING: No unit tests found!'
echo 'WARNING: Sauce credentials not found!'
echo 'WARNING: Sauce config files not found!'
echo 'Using phpunit...'
phpunit
echo 'Testing complete, returning to Travis CI build stack...'
