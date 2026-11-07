.class public Lorg/apache/tools/ant/util/KeepAliveOutputStream;
.super Ljava/io/FilterOutputStream;
.source "KeepAliveOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static wrap(Ljava/io/PrintStream;)Ljava/io/PrintStream;
    .locals 2

    .line 84
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lorg/apache/tools/ant/util/KeepAliveOutputStream;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static wrapSystemErr()Ljava/io/PrintStream;
    .locals 1

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;->wrap(Ljava/io/PrintStream;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public static wrapSystemOut()Ljava/io/PrintStream;
    .locals 1

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;->wrap(Ljava/io/PrintStream;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
