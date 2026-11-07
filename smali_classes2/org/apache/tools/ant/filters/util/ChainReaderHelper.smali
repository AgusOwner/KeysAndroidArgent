.class public final Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
.super Ljava/lang/Object;
.source "ChainReaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field public bufferSize:I

.field public filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field public primaryReader:Ljava/io/Reader;

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public static synthetic $r8$lambda$GrJK-eI9oUajOeWCKhPTZp-DlBM(Ljava/util/Vector;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 93
    iput v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/io/Reader;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 93
    iput v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withProject(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withPrimaryReader(Ljava/io/Reader;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withFilterChains(Ljava/lang/Iterable;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->cleanUpClassLoaders(Ljava/util/List;)V

    return-void
.end method

.method private static cleanUpClassLoaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 284
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private expandReader(Lorg/apache/tools/ant/types/AntFilterReader;Ljava/io/Reader;Ljava/util/List;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/AntFilterReader;",
            "Ljava/io/Reader;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;)",
            "Ljava/io/Reader;"
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 314
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class v1, Ljava/io/FilterReader;

    .line 315
    invoke-virtual {p3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 319
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    const-class v1, Ljava/io/FilterReader;

    .line 321
    invoke-virtual {p3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 329
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 334
    new-instance v2, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 338
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 340
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V

    .line 341
    const-class v0, Lorg/apache/tools/ant/types/Parameterizable;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 342
    move-object p3, p2

    check-cast p3, Lorg/apache/tools/ant/types/Parameterizable;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getParams()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/tools/ant/types/Parameterizable;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 344
    :cond_1
    check-cast p2, Ljava/io/Reader;

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    .line 324
    :catch_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "%s does not extend %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-class v0, Ljava/io/FilterReader;

    .line 325
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p2
.end method

.method static synthetic lambda$expandReader$0(Ljava/lang/reflect/Constructor;)Z
    .locals 3

    .line 329
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 330
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    aget-object p0, p0, v1

    const-class v0, Ljava/io/Reader;

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static synthetic lambda$expandReader$1(Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 335
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-class v1, Ljava/io/Reader;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s does not define a public constructor that takes in a %s as its single argument."

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private setProjectOnObject(Ljava/lang/Object;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    instance-of v1, p1, Lorg/apache/tools/ant/filters/BaseFilterReader;

    if-eqz v1, :cond_1

    .line 274
    check-cast p1, Lorg/apache/tools/ant/filters/BaseFilterReader;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void

    .line 277
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->primaryReader:Ljava/io/Reader;

    if-eqz v0, :cond_4

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v2, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    .line 237
    invoke-virtual {v2}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 238
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 240
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 244
    instance-of v4, v3, Lorg/apache/tools/ant/types/AntFilterReader;

    if-eqz v4, :cond_1

    .line 245
    check-cast v3, Lorg/apache/tools/ant/types/AntFilterReader;

    .line 246
    invoke-direct {p0, v3, v0, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->expandReader(Lorg/apache/tools/ant/types/AntFilterReader;Ljava/io/Reader;Ljava/util/List;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    instance-of v4, v3, Lorg/apache/tools/ant/filters/ChainableReader;

    if-eqz v4, :cond_0

    .line 249
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V

    .line 250
    check-cast v3, Lorg/apache/tools/ant/filters/ChainableReader;

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/filters/ChainableReader;->chain(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 256
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    invoke-static {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->cleanUpClassLoaders(Ljava/util/List;)V

    .line 259
    :cond_2
    throw v0

    .line 261
    :cond_3
    new-instance v2, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;-><init>(Lorg/apache/tools/ant/filters/util/ChainReaderHelper;Ljava/io/Reader;Ljava/util/List;Lorg/apache/tools/ant/filters/util/ChainReaderHelper$1;)V

    return-object v2

    .line 230
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "primaryReader must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 174
    iput p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    return-void
.end method

.method public setFilterChains(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    return-void
.end method

.method public setPrimaryReader(Ljava/io/Reader;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->primaryReader:Ljava/io/Reader;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public with(Ljava/util/function/Consumer;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;",
            ">;)",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;"
        }
    .end annotation

    .line 219
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public withBufferSize(I)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    return-object p0
.end method

.method public withFilterChains(Ljava/lang/Iterable;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;"
        }
    .end annotation

    .line 203
    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Ljava/util/Vector;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 207
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/Vector;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    move-object p1, v0

    .line 209
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    return-object p0
.end method

.method public withPrimaryReader(Ljava/io/Reader;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    return-object p0
.end method

.method public withProject(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    return-object p0
.end method
