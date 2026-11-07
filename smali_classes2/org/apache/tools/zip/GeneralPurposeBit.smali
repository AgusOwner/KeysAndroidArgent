.class public final Lorg/apache/tools/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "GeneralPurposeBit.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 55
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    return-void
.end method

.method public static parse([BI)Lorg/apache/tools/zip/GeneralPurposeBit;
    .locals 3

    .line 172
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result p0

    .line 173
    new-instance p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {p1}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 174
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 175
    :goto_1
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 176
    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    and-int/2addr p0, v2

    if-eqz p0, :cond_3

    move v1, v2

    .line 178
    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/tools/zip/GeneralPurposeBit;->useEncryption(Z)V

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 206
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeneralPurposeBit is not Cloneable?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([BI)V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 158
    :goto_0
    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    .line 159
    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    or-int/2addr v0, v2

    .line 160
    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v2, :cond_2

    const/16 v1, 0x40

    :cond_2
    or-int/2addr v0, v1

    .line 157
    invoke-static {v0, p1, p2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    return-void
.end method

.method public encode()[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 192
    instance-of v0, p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 194
    iget-boolean v0, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v0, v2, :cond_0

    iget-boolean p1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 184
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    mul-int/lit8 v0, v0, 0x11

    .line 185
    iget-boolean v1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    .line 186
    iget-boolean v1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    .line 187
    iget-boolean v1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public useDataDescriptor(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return-void
.end method

.method public useEncryption(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    return-void
.end method

.method public useStrongEncryption(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/GeneralPurposeBit;->useEncryption(Z)V

    :cond_0
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return-void
.end method

.method public usesDataDescriptor()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesStrongEncryption()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usesUTF8ForNames()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method
