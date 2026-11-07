.class public Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;
.super Lorg/apache/tools/ant/Task;
.source "PropertyHelperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;
    }
.end annotation


# instance fields
.field private delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private propertyHelper:Lorg/apache/tools/ant/PropertyHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private declared-synchronized getAddDelegateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConfigured(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getAddDelegateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addConfigured(Lorg/apache/tools/ant/PropertyHelper;)V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one PropertyHelper can be installed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createDelegate()Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;
    .locals 2

    .line 97
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;-><init>(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$1;)V

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getAddDelegateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either a new PropertyHelper or one or more PropertyHelper delegates are required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 121
    :cond_2
    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 124
    instance-of v4, v3, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    if-eqz v4, :cond_3

    .line 125
    check-cast v3, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->access$100(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;)Lorg/apache/tools/ant/PropertyHelper$Delegate;

    move-result-object v3

    goto :goto_2

    :cond_3
    check-cast v3, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    .line 126
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding PropertyHelper delegate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->log(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    goto :goto_1

    .line 130
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-eqz v0, :cond_5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installing PropertyHelper "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->log(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.PropertyHelper"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 109
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Project instance not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
