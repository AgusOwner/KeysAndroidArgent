.class public abstract Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "ConditionBase.java"


# instance fields
.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private taskName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, "condition"

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    const-string v0, "component"

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, "condition"

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/condition/Condition;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/taskdefs/condition/And;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAvailable(Lorg/apache/tools/ant/taskdefs/Available;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChecksum(Lorg/apache/tools/ant/taskdefs/Checksum;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/taskdefs/condition/Contains;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEquals(Lorg/apache/tools/ant/taskdefs/condition/Equals;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFilesMatch(Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHttp(Lorg/apache/tools/ant/taskdefs/condition/Http;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsFalse(Lorg/apache/tools/ant/taskdefs/condition/IsFalse;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsFileSelected(Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsReference(Lorg/apache/tools/ant/taskdefs/condition/IsReference;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsSet(Lorg/apache/tools/ant/taskdefs/condition/IsSet;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsTrue(Lorg/apache/tools/ant/taskdefs/condition/IsTrue;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/taskdefs/condition/Not;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/taskdefs/condition/Or;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOs(Lorg/apache/tools/ant/taskdefs/condition/Os;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSocket(Lorg/apache/tools/ant/taskdefs/condition/Socket;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUptodate(Lorg/apache/tools/ant/taskdefs/UpToDate;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected countConditions()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getConditions()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/taskdefs/condition/Condition;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->conditions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;->taskName:Ljava/lang/String;

    return-void
.end method
