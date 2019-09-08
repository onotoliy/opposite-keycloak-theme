# Тема для сервера авторизации Keycloak для МотоКлуба Оппозит

#### Подключение

**Gradle:**

```
repositories {
    maven {
        url  "https://dl.bintray.com/a-k-pohresniy/onotoliy"
    }
}


dependencies {
    compile 'com.github.onotoliy.opposite:keycloak-theme:0.1.0'
}
```

**Maven:**

```
<repositories>
    <repository>
        <snapshots>
            <enabled>
                false
            </enabled>
        </snapshots>
        <id>
            bintray-a-k-pohresniy-onotoliy
        </id>
        <name>
            bintray
        </name>
        <url>
            https://dl.bintray.com/a-k-pohresniy/onotoliy
        </url>
    </repository>
</repositories>

<dependency>
    <groupId>com.github.onotoliy.opposite</groupId>
    <artifactId>keycloak-theme</artifactId>
    <version>0.1.0</version>
    <type>jar</type>
</dependency>
```