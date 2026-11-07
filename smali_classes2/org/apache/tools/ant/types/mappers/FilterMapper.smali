.class public Lorg/apache/tools/ant/types/mappers/FilterMapper;
.super Lorg/apache/tools/ant/types/FilterChain;
.source "FilterMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 73
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance p1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    const/16 v2, 0x2000

    .line 75
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 76
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/mappers/FilterMapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 78
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 85
    :cond_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 87
    throw p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2

    .line 46
    new-instance p1, Lorg/apache/tools/ant/UnsupportedAttributeException;

    const-string v0, "filtermapper doesn\'t support the \"from\" attribute."

    const-string v1, "from"

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance p1, Lorg/apache/tools/ant/UnsupportedAttributeException;

    const-string v0, "filtermapper doesn\'t support the \"to\" attribute."

    const-string v1, "to"

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
