#!/bin/bash

# Cria estrutura de diretórios padrão Java (src/main/java e src/test/java)
mkdir -p src/main/java/com/exemplo
mkdir -p src/test/java/com/exemplo

# Cria arquivo principal App.java
cat > src/main/java/com/exemplo/App.java << 'EOF'
package com.exemplo;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello, GitHub Actions!");
    }

    public static int soma(int a, int b) {
        return a + b;
    }
}
EOF

# Cria classe de teste AppTest.java
cat > src/test/java/com/exemplo/AppTest.java << 'EOF'
package com.exemplo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testSoma() {
        assertEquals(5, App.soma(2, 3));
    }
}
EOF

# Cria pom.xml
cat > pom.xml << 'EOF'
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">

  <modelVersion>4.0.0</modelVersion>
  <groupId>com.exemplo</groupId>
  <artifactId>java-actions</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>jar</packaging>

  <dependencies>
    <dependency>
      <groupId>org.junit.jupiter</groupId>
      <artifactId>junit-jupiter</artifactId>
      <version>5.8.2</version>
      <scope>test</scope>
    </dependency>
  </dependencies>

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.8.1</version>
        <configuration>
          <source>17</source>
          <target>17</target>
        </configuration>
      </plugin>
    </plugins>
  </build>

</project>
EOF

echo "✅ Estrutura do projeto Java criada com sucesso!"

