.class final Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/Simple8BitZipEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Simple8BitChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;",
        ">;"
    }
.end annotation


# instance fields
.field public final code:B

.field public final unicode:C


# direct methods
.method constructor <init>(BC)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-byte p1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    .line 58
    iput-char p2, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->compareTo(Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;)I
    .locals 1

    .line 62
    iget-char v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char p1, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    instance-of v0, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 75
    iget-char v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v2, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v0, v2, :cond_0

    iget-byte v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    iget-byte p1, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-char v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0xffff

    iget-char v2, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    and-int/lit16 v1, v1, 0xff

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
