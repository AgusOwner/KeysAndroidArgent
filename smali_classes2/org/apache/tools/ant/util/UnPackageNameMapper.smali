.class public Lorg/apache/tools/ant/util/UnPackageNameMapper;
.super Lorg/apache/tools/ant/util/GlobPatternMapper;
.source "UnPackageNameMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 44
    iget v0, p0, Lorg/apache/tools/ant/util/UnPackageNameMapper;->prefixLength:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/UnPackageNameMapper;->postfixLength:I

    sub-int/2addr v1, v2

    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 46
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
