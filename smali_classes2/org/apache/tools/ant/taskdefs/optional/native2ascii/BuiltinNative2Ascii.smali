.class public Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;
.super Ljava/lang/Object;
.source "BuiltinNative2Ascii.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;


# static fields
.field static final IMPLEMENTATION_NAME:Ljava/lang/String; = "builtin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getReader(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p3

    .line 64
    :cond_1
    :goto_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/FileReader;

    invoke-direct {p3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p2
.end method

.method private getWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p2, "ASCII"

    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    invoke-direct {p3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object p2

    .line 78
    :cond_1
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object p3
.end method

.method static synthetic lambda$translate$0(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)Ljava/util/Iterator;
    .locals 0

    .line 85
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p0

    .line 86
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private translate(Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/util/function/UnaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/io/Writer;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;-><init>(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "%s%n"

    .line 87
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final convert(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getReverse()Z

    move-result v0

    .line 49
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getEncoding()Ljava/lang/String;

    move-result-object p1

    .line 50
    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->getReader(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/BufferedReader;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-direct {p0, p3, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->getWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 53
    :try_start_2
    new-instance p3, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p3, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda1;-><init>()V

    .line 53
    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->translate(Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/util/function/UnaryOperator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 56
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p3

    if-eqz p1, :cond_3

    .line 50
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_4

    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Exception trying to translate data"

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
