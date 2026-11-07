.class public Lorg/apache/tools/mail/ErrorInQuitException;
.super Ljava/io/IOException;
.source "ErrorInQuitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
