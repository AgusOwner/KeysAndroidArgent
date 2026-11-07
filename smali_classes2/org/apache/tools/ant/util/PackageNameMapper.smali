.class public Lorg/apache/tools/ant/util/PackageNameMapper;
.super Lorg/apache/tools/ant/util/GlobPatternMapper;
.source "PackageNameMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 42
    iget v0, p0, Lorg/apache/tools/ant/util/PackageNameMapper;->prefixLength:I

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/PackageNameMapper;->postfixLength:I

    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/PackageNameMapper;->getHandleDirSep()Z

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 47
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
