.class public Lorg/apache/tools/ant/taskdefs/DiagnosticsTask;
.super Lorg/apache/tools/ant/Task;
.source "DiagnosticsTask.java"


# static fields
.field private static final ARGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    sput-object v0, Lorg/apache/tools/ant/taskdefs/DiagnosticsTask;->ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 38
    sget-object v0, Lorg/apache/tools/ant/taskdefs/DiagnosticsTask;->ARGS:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->main([Ljava/lang/String;)V

    return-void
.end method
