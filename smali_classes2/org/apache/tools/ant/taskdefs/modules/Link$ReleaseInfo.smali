.class public Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseInfo"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private final propertiesToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final propertiesToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    .line 1742
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createAdd()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;
    .locals 2

    .line 1771
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1772
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createDelete()Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;
    .locals 2

    .line 1784
    new-instance v0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V

    .line 1785
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1751
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public setDelete(Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    .line 1799
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1800
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {v4, v5, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;-><init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 1761
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    return-void
.end method

.method public toCommandLineOptions()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--release-info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1830
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--release-info=add"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1833
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;

    .line 1834
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->toProperties()Ljava/util/Properties;

    move-result-object v3

    .line 1835
    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    .line 1836
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1841
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--release-info=del:keys="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1848
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ""

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;

    .line 1849
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    goto :goto_1

    .line 1855
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public validate()V
    .locals 2

    .line 1813
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToAdd:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1814
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo;->propertiesToDelete:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
