.class public Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleSpec"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 3

    .line 981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 982
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ModuleSpec;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 983
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "name is required for module."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
