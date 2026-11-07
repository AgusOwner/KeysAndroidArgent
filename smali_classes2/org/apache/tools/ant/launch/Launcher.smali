.class public Lorg/apache/tools/ant/launch/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# static fields
.field public static final ANTHOME_PROPERTY:Ljava/lang/String; = "ant.home"

.field public static final ANTLIBDIR_PROPERTY:Ljava/lang/String; = "ant.library.dir"

.field public static final ANT_PRIVATEDIR:Ljava/lang/String; = ".ant"

.field public static final ANT_PRIVATELIB:Ljava/lang/String; = "lib"

.field protected static final EXIT_CODE_ERROR:I = 0x2

.field private static final JAVA_CLASS_PATH:Ljava/lang/String; = "java.class.path"

.field public static final MAIN_CLASS:Ljava/lang/String; = "org.apache.tools.ant.Main"

.field public static final USER_HOMEDIR:Ljava/lang/String; = "user.home"

.field public static final USER_LIBDIR:Ljava/lang/String;


# instance fields
.field public launchDiag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".ant"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    return-void
.end method

.method private addPath(Ljava/lang/String;ZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    invoke-static {v1}, Lorg/apache/tools/ant/launch/Locator;->getLocationURLs(Ljava/io/File;)[Ljava/net/URL;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 148
    iget-boolean v5, p0, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    if-eqz v5, :cond_1

    .line 149
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding library JAR: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_2
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    iget-boolean v1, p0, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    if-eqz v1, :cond_3

    .line 157
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adding library URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_3
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getJarArray([Ljava/net/URL;[Ljava/net/URL;[Ljava/net/URL;Ljava/io/File;)[Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 378
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    if-eqz p4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_0
    new-array v1, v0, [Ljava/net/URL;

    .line 383
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    array-length v2, p1

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    array-length p2, p2

    array-length p1, p1

    add-int/2addr p2, p1

    array-length p1, p3

    invoke-static {p3, v3, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 389
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object p1, v1, v0

    :cond_1
    return-object v1
.end method

.method private getLibPathURLs(Ljava/lang/String;Ljava/util/List;)[Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 323
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/ant/launch/Launcher;->addPath(Ljava/lang/String;ZLjava/util/List;)V

    .line 326
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x1

    .line 327
    invoke-direct {p0, p2, v2, v0}, Lorg/apache/tools/ant/launch/Launcher;->addPath(Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/net/URL;

    .line 330
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/URL;

    return-object p1
.end method

.method private getSystemURLs(Ljava/io/File;)[Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "ant.library.dir"

    .line 343
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 347
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    goto :goto_2

    .line 349
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/launch/Launcher;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_2
    invoke-static {p1}, Lorg/apache/tools/ant/launch/Locator;->getLocationURLs(Ljava/io/File;)[Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method private getUserURLs()[Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    .line 361
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->getLocationURLs(Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private logPath(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "= \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 100
    :try_start_0
    new-instance v2, Lorg/apache/tools/ant/launch/Launcher;

    invoke-direct {v2}, Lorg/apache/tools/ant/launch/Launcher;-><init>()V

    .line 101
    invoke-direct {v2, p0}, Lorg/apache/tools/ant/launch/Launcher;->run([Ljava/lang/String;)I

    move-result p0

    .line 102
    iget-boolean v1, v2, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z
    :try_end_0
    .catch Lorg/apache/tools/ant/launch/LaunchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 108
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/launch/LaunchException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 112
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/launch/LaunchException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ant.home"

    .line 175
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 183
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 186
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/launch/Launcher;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const-string v9, "org.apache.tools.ant.Main"

    move v10, v8

    move v11, v10

    move v13, v11

    const/4 v12, 0x0

    .line 204
    :goto_1
    array-length v14, v0

    const/4 v15, 0x1

    if-ge v10, v14, :cond_f

    const-string v14, "-lib"

    .line 205
    aget-object v6, v0, v10

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    array-length v6, v0

    sub-int/2addr v6, v15

    if-eq v10, v6, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 210
    aget-object v6, v0, v10

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 207
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/launch/LaunchException;

    const-string v2, "The -lib argument must be followed by a library location"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/launch/LaunchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v6, "-cp"

    .line 211
    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    array-length v6, v0

    sub-int/2addr v6, v15

    if-eq v10, v6, :cond_6

    if-nez v12, :cond_5

    add-int/lit8 v10, v10, 0x1

    .line 220
    aget-object v12, v0, v10

    goto/16 :goto_4

    .line 217
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/launch/LaunchException;

    const-string v2, "The -cp argument must not be repeated"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/launch/LaunchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/launch/LaunchException;

    const-string v2, "The -cp argument must be followed by a classpath expression"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/launch/LaunchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v6, "--nouserlib"

    .line 221
    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "-nouserlib"

    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const-string v6, "--launchdiag"

    .line 223
    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 224
    iput-boolean v15, v1, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    goto :goto_4

    :cond_9
    const-string v6, "--noclasspath"

    .line 225
    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "-noclasspath"

    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    const-string v6, "-main"

    .line 227
    aget-object v14, v0, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 228
    array-length v6, v0

    sub-int/2addr v6, v15

    if-eq v10, v6, :cond_b

    add-int/lit8 v10, v10, 0x1

    .line 232
    aget-object v6, v0, v10

    move-object v9, v6

    goto :goto_4

    .line 229
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/launch/LaunchException;

    const-string v2, "The -main argument must be followed by a library location"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/launch/LaunchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_c
    aget-object v6, v0, v10

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    :goto_2
    move v11, v15

    goto :goto_4

    :cond_e
    :goto_3
    move v13, v15

    :goto_4
    add-int/2addr v10, v15

    goto/16 :goto_1

    :cond_f
    const-string v6, "Launcher JAR"

    .line 238
    invoke-direct {v1, v6, v4}, Lorg/apache/tools/ant/launch/Launcher;->logPath(Ljava/lang/String;Ljava/io/File;)V

    const-string v6, "Launcher JAR directory"

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lorg/apache/tools/ant/launch/Launcher;->logPath(Ljava/lang/String;Ljava/io/File;)V

    .line 240
    new-instance v6, Ljava/io/File;

    const-string v10, "java.home"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10, v6}, Lorg/apache/tools/ant/launch/Launcher;->logPath(Ljava/lang/String;Ljava/io/File;)V

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    array-length v10, v0

    if-ne v6, v10, :cond_10

    goto :goto_5

    :cond_10
    new-array v0, v8, [Ljava/lang/String;

    .line 248
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_5
    if-eqz v11, :cond_11

    const/4 v12, 0x0

    .line 251
    :cond_11
    invoke-direct {v1, v12, v2}, Lorg/apache/tools/ant/launch/Launcher;->getLibPathURLs(Ljava/lang/String;Ljava/util/List;)[Ljava/net/URL;

    move-result-object v2

    .line 253
    invoke-direct {v1, v5}, Lorg/apache/tools/ant/launch/Launcher;->getSystemURLs(Ljava/io/File;)[Ljava/net/URL;

    move-result-object v3

    if-eqz v13, :cond_12

    new-array v6, v8, [Ljava/net/URL;

    goto :goto_6

    .line 254
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/launch/Launcher;->getUserURLs()[Ljava/net/URL;

    move-result-object v6

    .line 256
    :goto_6
    invoke-static {}, Lorg/apache/tools/ant/launch/Locator;->getToolsJar()Ljava/io/File;

    move-result-object v10

    const-string v11, "tools.jar"

    .line 257
    invoke-direct {v1, v11, v10}, Lorg/apache/tools/ant/launch/Launcher;->logPath(Ljava/lang/String;Ljava/io/File;)V

    .line 258
    invoke-direct {v1, v2, v6, v3, v10}, Lorg/apache/tools/ant/launch/Launcher;->getJarArray([Ljava/net/URL;[Ljava/net/URL;[Ljava/net/URL;Ljava/io/File;)[Ljava/net/URL;

    move-result-object v2

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "java.class.path"

    .line 263
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v15

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    sget-char v11, Ljava/io/File;->pathSeparatorChar:C

    if-ne v10, v11, :cond_13

    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v15

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 269
    :cond_13
    array-length v10, v2

    move v11, v8

    :goto_7
    if-ge v11, v10, :cond_14

    aget-object v12, v2, v11

    .line 270
    sget-char v13, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/tools/ant/launch/Locator;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 274
    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v6, v10}, Lorg/apache/tools/ant/launch/Launcher;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v6, Ljava/net/URLClassLoader;

    const-class v10, Lorg/apache/tools/ant/launch/Launcher;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v6, v2, v10}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 277
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 282
    :try_start_0
    invoke-virtual {v6, v9}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lorg/apache/tools/ant/launch/AntMain;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v6, v8, [Ljava/lang/Class;

    .line 283
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/launch/AntMain;

    const/4 v10, 0x0

    .line 284
    invoke-interface {v6, v0, v10, v10}, Lorg/apache/tools/ant/launch/AntMain;->startAnt([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v10

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 297
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 293
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Failed to locate"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v10, 0x0

    move-object v6, v0

    move-object v2, v10

    .line 286
    :goto_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Incompatible version of "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " detected"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {v2}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    .line 289
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Location of this class "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_9
    if-eqz v6, :cond_15

    .line 301
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "ant.home: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Classpath: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher JAR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher Directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x2

    :cond_15
    return v8

    .line 192
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/launch/LaunchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ant home is set incorrectly or ant could not be located (estimated value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/launch/LaunchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 400
    iget-boolean v0, p0, Lorg/apache/tools/ant/launch/Launcher;->launchDiag:Z

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
