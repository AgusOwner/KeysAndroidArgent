.class public Lorg/apache/tools/ant/util/KeepAliveInputStream;
.super Ljava/io/FilterInputStream;
.source "KeepAliveInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static wrapSystemIn()Ljava/io/InputStream;
    .locals 2

    .line 65
    new-instance v0, Lorg/apache/tools/ant/util/KeepAliveInputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/KeepAliveInputStream;-><init>(Ljava/io/InputStream;)V

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
