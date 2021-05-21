package fit.knu.ist.ta2;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Ta2ApplicationTests {

	@Test
    void Laba2Test() {
        fit.knu.ist.ta2.lab2.Calculate calculator = new fit.knu.ist.ta2.lab2.Calculate();

        assertTrue(Float.MAX_VALUE != calculator.lab2equation(2));
//        assertEquals(-0.071, calculator.lab2equation(0.5));
//        assertEquals(0.179, calculator.lab2equation(2));
        assertTrue(0.064 == calculator.lab2equation(2));
    }
}
