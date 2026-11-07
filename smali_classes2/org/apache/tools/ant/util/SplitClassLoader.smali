.class public final Lorg/apache/tools/ant/util/SplitClassLoader;
.super Lorg/apache/tools/ant/AntClassLoader;
.source "SplitClassLoader.java"


# instance fields
.field private final splitClasses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/types/Path;Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p3, p2, v0}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    .line 43
    iput-object p4, p0, Lorg/apache/tools/ant/util/SplitClassLoader;->splitClasses:[Ljava/lang/String;

    return-void
.end method

.method private isSplit(Ljava/lang/String;)Z
    .locals 7

    const/16 v0, 0x2e

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/util/SplitClassLoader;->splitClasses:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 68
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v3
.end method


# virtual methods
.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    monitor-exit p0

    return-object v0

    .line 55
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->isSplit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_1
    monitor-exit p0

    return-object p1

    .line 62
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
