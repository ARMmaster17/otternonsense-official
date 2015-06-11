<?php
class lib_version extends PHPUnit_Framework_TestCase
{
    public function testgetVersion()
    {
        $this->assertNotEmpty(getVersion());
    }
}
?>
