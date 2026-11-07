.class public Lorg/apache/tools/ant/types/mappers/CutDirsMapper;
.super Ljava/lang/Object;
.source "CutDirsMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private dirs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 65
    iget v0, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    if-lez v0, :cond_3

    .line 68
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x2f

    .line 73
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5c

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    .line 75
    iget v7, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    if-ge v5, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 76
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v6, :cond_2

    return-object v1

    :cond_2
    add-int/2addr v3, v4

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "dirs must be set to a positive number"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDirs(I)V
    .locals 0

    .line 43
    iput p1, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
