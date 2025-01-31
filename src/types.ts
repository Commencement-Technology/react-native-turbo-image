import type {
  AccessibilityProps,
  ViewProps,
  StyleProp,
  ImageStyle,
  ColorValue,
  NativeSyntheticEvent,
} from 'react-native';

export type IndicatorStyle = 'large' | 'medium';
export type Indicator = Partial<{
  style: IndicatorStyle;
  color: number | ColorValue;
}>;
export type ResizeMode = 'contain' | 'cover' | 'stretch' | 'center';

export type CachePolicy = 'memory' | 'urlCache' | 'dataCache';

type State = 'running' | 'cancelled' | 'completed';

export type Placeholder = {
  blurhash: string;
};

export type TaskState = {
  state: State;
};

export type Success = {
  width: number;
  height: number;
  source: string;
};

export type Failure = {
  error: string;
};

export interface TurboImageProps extends AccessibilityProps, ViewProps {
  src: string;
  style: StyleProp<ImageStyle>;
  resizeMode?: ResizeMode;
  indicator?: Indicator;
  placeholder?: Partial<Placeholder>;
  showPlaceholderOnFailure?: boolean;
  fadeDuration?: number;
  borderRadius?: number;
  rounded?: boolean;
  blur?: number;
  monochrome?: number | ColorValue;
  resize?: number;
  tint?: number | ColorValue;
  cachePolicy?: CachePolicy;
  isSVG?: boolean;
  isGif?: boolean;
  onStart?: (result: NativeSyntheticEvent<TaskState>) => void;
  onSuccess?: (result: NativeSyntheticEvent<Success>) => void;
  onFailure?: (result: NativeSyntheticEvent<Failure>) => void;
  onCompletion?: (result: NativeSyntheticEvent<TaskState>) => void;
}

export type TurboImageApi = {
  prefetch: (sources: string[]) => Promise<void>;
  clearMemoryCache: () => Promise<void>;
  clearDiskCache: () => Promise<void>;
};
