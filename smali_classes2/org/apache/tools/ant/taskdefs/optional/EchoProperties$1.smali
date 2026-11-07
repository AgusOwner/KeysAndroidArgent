.class Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;
.super Ljava/util/Properties;
.source "EchoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46a6a3b8a9ee4ef6L


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;

.field final synthetic val$keyList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$AfR_caA29KN-2ZbWVbvipqv5cac(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LXv42HBDJWRrhLOlLkvfiIf58Dk(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;Ljava/util/List;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->val$keyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;-><init>()V

    .line 365
    invoke-interface {v1, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v1

    .line 363
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 366
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->val$keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;-><init>()V

    .line 355
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 356
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    return-object v0
.end method
