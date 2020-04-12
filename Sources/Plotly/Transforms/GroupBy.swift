
/// **Warning** This is generated code and all changes will be eventually overwritten.
/// See `Sources/Codegen/Readme.md` for more details.


/// Specification of groupby operation on trace data.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#transformsgroupby), 
///   [JavaScript](https://plot.ly/javascript/reference/#transformsgroupby) or 
///   [R](https://plot.ly/r/reference/#transformsgroupby)
public struct GroupBy: Transform {
    /// Determines whether this group-by transform is enabled or disabled.
    public var enabled: Bool? = nil

    /// Sets the groups in which the trace data will be split.
    /// 
    /// For example, with `x` set to *[1, 2, 3, 4]* and `groups` set to *['a', 'b', 'a', 'b']*, the
    /// groupby transform with split in one trace with `x` [1, 3] and one trace with `x` [2, 4].
    public var groups: [Double]? = nil

    /// Pattern by which grouped traces are named.
    /// 
    /// If only one trace is present, defaults to the group name (`"%{group}"`), otherwise defaults to
    /// the group name with trace name (`"%{group} (%{trace})"`). Available escape sequences are
    /// `%{group}`, which inserts the group name, and `%{trace}`, which inserts the trace name. If
    /// grouping GDP data by country when more than one trace is present, for example, the default
    /// "%{group} (%{trace})" would return "Monaco (GDP per capita)".
    public var nameFormat: String? = nil

    public struct Style: Encodable {
        /// The group value which receives these styles.
        public var target: String? = nil
    
        /// Sets each group styles.
        /// 
        /// For example, with `groups` set to *['a', 'b', 'a', 'b']* and `styles` set to *[{target: 'a',
        /// value: { marker: { color: 'red' } }}] marker points in group *'a'* will be drawn in red.
        public var value: Anything? = nil
    
        /// Creates `Style` object with specified properties.
        /// 
        /// - Parameters:
        ///   - target: The group value which receives these styles.
        ///   - value: Sets each group styles.
        public init(target: String? = nil, value: Anything? = nil) {
            self.target = target
            self.value = value
        }
        
    }
    public var styles: [Style]? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case enabled
        case groups
        case nameFormat = "nameformat"
        case styles
    }
    
    /// Creates `GroupBy` object with specified properties.
    /// 
    /// - Parameters:
    ///   - enabled: Determines whether this group-by transform is enabled or disabled.
    ///   - groups: Sets the groups in which the trace data will be split.
    ///   - nameFormat: Pattern by which grouped traces are named.
    ///   - styles:
    public init(enabled: Bool? = nil, groups: [Double]? = nil, nameFormat: String? = nil, styles:
            [Style]? = nil) {
        self.enabled = enabled
        self.groups = groups
        self.nameFormat = nameFormat
        self.styles = styles
    }
    
}