.class public Lorg/apache/tools/ant/types/optional/ScriptMapper;
.super Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.source "ScriptMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public addMappedName(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->initScriptRunner()V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->clear()V

    const-string p1, "ant_mapper"

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/ScriptMapper;->executeScript(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptMapper;->files:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
