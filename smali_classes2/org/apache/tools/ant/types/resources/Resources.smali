.class public Lorg/apache/tools/ant/types/resources/Resources;
.super Lorg/apache/tools/ant/types/DataType;
.source "Resources.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/Resources$MyCollection;,
        Lorg/apache/tools/ant/types/resources/Resources$MyIterator;
    }
.end annotation


# static fields
.field public static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private volatile cache:Z

.field private cacheColl:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field private rc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ALZpLOfMtwo3jKTLEglRVXdq7NI(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hL2s4g6aC3twQnWeneBffpLoyZc(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yuWX36whov8kJicvllsiEELVSLM(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/Resources;->NONE:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/Resources;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 114
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 114
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/stream/Stream;
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->internalResources()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getNested()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/ResourceCollection;
    .locals 1

    .line 248
    const-class v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Resources;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    return-object v0
.end method

.method private declared-synchronized internalResources()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 263
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;-><init>(Lorg/apache/tools/ant/types/resources/Resources;Lorg/apache/tools/ant/types/resources/Resources$1;)V

    const/16 v1, 0x100

    .line 264
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$dieOnCircularReference$1(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/DataType;)V
    .locals 0

    .line 231
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method private declared-synchronized validate()V
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->dieOnCircularReference()V

    .line 253
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;-><init>(Lorg/apache/tools/ant/types/resources/Resources;Lorg/apache/tools/ant/types/resources/Resources$1;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->invalidateExistingIterators()V

    .line 158
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 148
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda5;-><init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 231
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    .line 232
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method protected invalidateExistingIterators()V
    .locals 0

    .line 240
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public isFilesystemOnly()Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    return v0

    .line 197
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 172
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/resources/Resources;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/FailFast;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$iterator$0$org-apache-tools-ant-types-resources-Resources()Ljava/util/Iterator;
    .locals 2

    .line 172
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/Resources$MyIterator;-><init>(Lorg/apache/tools/ant/types/resources/Resources;Lorg/apache/tools/ant/types/resources/Resources$1;)V

    return-object v0
.end method

.method public setCache(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    return-void
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 184
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->internalResources()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cacheColl:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 212
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Resources$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
