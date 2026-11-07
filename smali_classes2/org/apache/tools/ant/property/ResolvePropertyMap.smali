.class public Lorg/apache/tools/ant/property/ResolvePropertyMap;
.super Ljava/lang/Object;
.source "ResolvePropertyMap.java"

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# instance fields
.field private expandingLHS:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final master:Lorg/apache/tools/ant/property/GetProperty;

.field private final parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

.field private prefix:Ljava/lang/String;

.field private prefixValues:Z

.field private final seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/property/GetProperty;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Lorg/apache/tools/ant/property/GetProperty;",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 52
    iput-object p2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->master:Lorg/apache/tools/ant/property/GetProperty;

    .line 53
    new-instance p2, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-direct {p2, p1, p3, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    iput-object p2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 81
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->master:Lorg/apache/tools/ant/property/GetProperty;

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/property/GetProperty;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 105
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 90
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->parseProperties:Lorg/apache/tools/ant/property/ParseProperties;

    iget-object v2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->seen:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    throw v0

    .line 64
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property %s was circularly defined."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public resolveAllProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public resolveAllProperties(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->map:Ljava/util/Map;

    .line 144
    iput-object p2, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefix:Ljava/lang/String;

    .line 145
    iput-boolean p3, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->prefixValues:Z

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lorg/apache/tools/ant/property/ResolvePropertyMap;->expandingLHS:Z

    .line 149
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_1
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
