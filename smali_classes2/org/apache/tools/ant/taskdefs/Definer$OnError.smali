.class public Lorg/apache/tools/ant/taskdefs/Definer$OnError;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Definer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Definer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnError"
.end annotation


# static fields
.field public static final FAIL:I = 0x0

.field public static final FAIL_ALL:I = 0x3

.field public static final IGNORE:I = 0x2

.field public static final POLICY_FAIL:Ljava/lang/String; = "fail"

.field public static final POLICY_FAILALL:Ljava/lang/String; = "failall"

.field public static final POLICY_IGNORE:Ljava/lang/String; = "ignore"

.field public static final POLICY_REPORT:Ljava/lang/String; = "report"

.field public static final REPORT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Definer$OnError;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "ignore"

    const-string v1, "failall"

    const-string v2, "fail"

    const-string v3, "report"

    .line 121
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
