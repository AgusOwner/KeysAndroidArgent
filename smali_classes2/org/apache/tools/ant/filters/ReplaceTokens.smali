.class public final Lorg/apache/tools/ant/filters/ReplaceTokens;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "ReplaceTokens.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/ReplaceTokens$Token;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEGIN_TOKEN:Ljava/lang/String; = "@"

.field private static final DEFAULT_END_TOKEN:Ljava/lang/String; = "@"


# instance fields
.field private beginToken:Ljava/lang/String;

.field private endToken:Ljava/lang/String;

.field private hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readBuffer:Ljava/lang/String;

.field private replaceData:Ljava/lang/String;

.field private replaceIndex:I

.field private final resolvedTokens:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedTokensBuilt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    const-string v0, "@"

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 64
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    .line 67
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    const-string p1, ""

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    const-string p1, "@"

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    return-void
.end method

.method private getBeginToken()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    return-object v0
.end method

.method private getEndToken()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    return-object v0
.end method

.method private getFirstCharacterFromReadBuffer()I
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    return v0
.end method

.method private getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;
    .locals 5

    const-string v0, "getProperties failed, "

    .line 245
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 250
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 256
    :goto_2
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 257
    throw p1
.end method

.method private getTokens()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 305
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 307
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 309
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tokenchar"

    .line 310
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "begintoken"

    .line 312
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v5, "endtoken"

    .line 314
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "token"

    .line 317
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 320
    iget-object v5, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v5, "propertiesfile"

    .line 321
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    new-instance v4, Lorg/apache/tools/ant/types/resources/FileResource;

    new-instance v5, Ljava/io/File;

    .line 323
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 322
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/filters/ReplaceTokens;->makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V
    .locals 2

    .line 331
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/filters/ReplaceTokens;Ljava/util/Properties;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setTokens(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addConfiguredToken(Lorg/apache/tools/ant/filters/ReplaceTokens$Token;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 293
    new-instance v0, Lorg/apache/tools/ant/filters/ReplaceTokens;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;-><init>(Ljava/io/Reader;)V

    .line 294
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getBeginToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setBeginToken(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getEndToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setEndToken(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getTokens()Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setTokens(Ljava/util/Hashtable;)V

    const/4 p1, 0x1

    .line 297
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setInitialized(Z)V

    return-object v0
.end method

.method synthetic lambda$makeTokensFromProperties$0$org-apache-tools-ant-filters-ReplaceTokens(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->initialize()V

    .line 115
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->setInitialized(Z)V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokensBuilt:Z

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 128
    iget v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    .line 136
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v1, :cond_5

    return v0

    .line 141
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 146
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 149
    :cond_7
    iget-object v2, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->resolvedTokens:Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->replaceIndex:I

    const-string v0, ""

    .line 153
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->read()I

    move-result v0

    return v0

    .line 157
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->readBuffer:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getFirstCharacterFromReadBuffer()I

    move-result v0

    return v0

    .line 148
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ReplaceTokens;->getFirstCharacterFromReadBuffer()I

    move-result v0

    return v0
.end method

.method public setBeginToken(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->beginToken:Ljava/lang/String;

    return-void
.end method

.method public setEndToken(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens;->endToken:Ljava/lang/String;

    return-void
.end method

.method public setPropertiesResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/ReplaceTokens;->makeTokensFromProperties(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method
