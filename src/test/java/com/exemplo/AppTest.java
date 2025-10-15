package com.exemplo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testSoma() {
        assertEquals(5, App.soma(2, 3));
    }
}
