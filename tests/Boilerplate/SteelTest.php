<?php

namespace Tests\Boilerplate;

use Boilerplate\Steel;
use PHPUnit\Framework\TestCase;

/**
 * @covers Boilerplate\Steel
 */
class SteelTest extends TestCase
{
    public function testShouldHaveProperCarbonRatio()
    {
        // Given
        $expected = 2.11;
        $steelUnderTest = new Steel();

        // When
        $carbonRatio = $steelUnderTest->getCarbonRatio();

        // Then
        $this->assertLessThanOrEqual($expected, $carbonRatio);
    }
}
