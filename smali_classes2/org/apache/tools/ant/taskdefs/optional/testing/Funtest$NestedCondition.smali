.class Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "Funtest.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NestedCondition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$1;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 2

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;->countConditions()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    return v0

    .line 568
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A single nested condition is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
