.class public Lorg/apache/tools/ant/BuildException;
.super Ljava/lang/RuntimeException;
.source "BuildException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b34350938a1f130L


# instance fields
.field private location:Lorg/apache/tools/ant/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iput-object p3, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 123
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 137
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public static of(Ljava/lang/Throwable;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 34
    instance-of v0, p0, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lorg/apache/tools/ant/BuildException;

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-object v0
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
