.class public Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;
.super Ljava/lang/Object;
.source "ResourcesMatch.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private asText:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 60
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public eval()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 82
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    invoke-static {v2, v3, v4}, Lorg/apache/tools/ant/util/ResourceUtils;->contentEquals(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "when comparing resources "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return v1

    .line 71
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify one or more nested resource collections"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsText(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourcesMatch;->asText:Z

    return-void
.end method
