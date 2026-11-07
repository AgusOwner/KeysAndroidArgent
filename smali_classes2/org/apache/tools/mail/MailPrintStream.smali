.class Lorg/apache/tools/mail/MailPrintStream;
.super Ljava/io/PrintStream;
.source "MailMessage.java"


# instance fields
.field private lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 479
    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method


# virtual methods
.method rawPrint(Ljava/lang/String;)V
    .locals 3

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 511
    invoke-virtual {p0, v2}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method rawWrite(I)V
    .locals 0

    .line 506
    invoke-super {p0, p1}, Ljava/io/PrintStream;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 486
    iget v1, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 487
    invoke-virtual {p0, v2}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 488
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_1

    .line 489
    iget v2, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    if-ne v2, v0, :cond_1

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailPrintStream;->rawWrite(I)V

    .line 495
    :goto_0
    iput p1, p0, Lorg/apache/tools/mail/MailPrintStream;->lastChar:I

    return-void
.end method

.method public write([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 501
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailPrintStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
